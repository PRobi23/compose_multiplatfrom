package com.magine.multiplatform

import android.content.Context
import android.content.pm.PackageManager

/**
 * Returns if the app is running on a tv or not
 */
fun Context.isTv() = this.packageManager.hasSystemFeature(PackageManager.FEATURE_LEANBACK)