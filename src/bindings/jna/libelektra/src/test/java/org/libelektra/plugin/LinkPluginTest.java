package org.libelektra.plugin;

import static org.junit.Assert.assertEquals;

import org.junit.Before;
import org.junit.Test;
import org.libelektra.KDBException;
import org.libelektra.Key;
import org.libelektra.KeySet;
import org.mockito.Mockito;

public class LinkPluginTest
{

	private LinkPlugin linkPlugin;

	static final String KEY_1_NAME = "/key_name";
	static final String KEY_1_VALID_VALUE = "https://google.com";
	static final String KEY_1_INVALID_VALUE = "ht:/googl.e.c";

	private Key parentKey, keyWithoutMeta, validKeyWithMeta, validKeyWithTimeout, invalidKeyWithMeta;

	@Before public void setup ()
	{
		linkPlugin = Mockito.spy (new LinkPlugin ());
		setupTestKeys ();
	}

	private void setupTestKeys ()
	{
		parentKey = Key.create ("/key_test");
		keyWithoutMeta = Key.create (KEY_1_NAME, KEY_1_VALID_VALUE);

		validKeyWithMeta = Key.create (KEY_1_NAME, KEY_1_VALID_VALUE);
		validKeyWithMeta.setMeta ("check/link", "");

		validKeyWithTimeout = Key.create (KEY_1_NAME, KEY_1_VALID_VALUE);
		validKeyWithTimeout.setMeta ("check/link", "200");

		invalidKeyWithMeta = Key.create (KEY_1_NAME, KEY_1_INVALID_VALUE);
		invalidKeyWithMeta.setMeta ("check/link", "200");
	}

	@Test public void setWithoutMetaTagShouldReturn0 () throws KDBException
	{
		KeySet keySet = KeySet.create (1, keyWithoutMeta);
		int set = linkPlugin.set (keySet, parentKey);
		assertEquals (0, set);
	}

	@Test public void setWithInternetConnectionShouldSucceed () throws KDBException
	{
		KeySet keySet = KeySet.create (1, validKeyWithMeta);
		int set = linkPlugin.set (keySet, parentKey);

		assertEquals (1, set);
	}

	@Test public void setWithInternetConnectionShouldFail () throws KDBException
	{
		KeySet keySet = KeySet.create (1, invalidKeyWithMeta);
		int set = linkPlugin.set (keySet, parentKey);

		assertEquals (-1, set);
	}

	@Test public void setWithoutInternetConnectionShouldValidateUrlAndFail () throws KDBException
	{
		Mockito.doReturn (false).when (linkPlugin).isReachable (KEY_1_INVALID_VALUE, 200);

		KeySet keySet = KeySet.create (1, invalidKeyWithMeta);
		int set = linkPlugin.set (keySet, parentKey);

		assertEquals (-1, set);
	}

	@Test public void setWithoutInternetConnectionShouldValidateUrlAndSucceed () throws KDBException
	{
		Mockito.doReturn (false).when (linkPlugin).isReachable (KEY_1_VALID_VALUE, 200);

		KeySet keySet = KeySet.create (1, validKeyWithTimeout);
		int set = linkPlugin.set (keySet, parentKey);

		assertEquals (1, set);
	}

	@Test public void setWithInternetConnectionShouldBeInvalidWithTwoKeys () throws KDBException
	{
		KeySet keySet = KeySet.create (2, validKeyWithMeta, invalidKeyWithMeta);
		int set = linkPlugin.set (keySet, parentKey);

		assertEquals (-1, set);
	}
}
