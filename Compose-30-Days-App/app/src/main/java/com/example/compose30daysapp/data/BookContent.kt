package com.example.compose30daysapp.data

import androidx.annotation.DrawableRes
import androidx.annotation.StringRes

data class BookContent(
    @StringRes val titleStringId: Int,
    @StringRes val contentStringId: Int,
    @StringRes val sourceStringId: Int,
    @DrawableRes val imageId: Int
)
