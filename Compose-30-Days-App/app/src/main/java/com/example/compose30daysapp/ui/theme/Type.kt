package com.example.compose30daysapp.ui.theme

import androidx.compose.material3.Typography
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.sp
import com.example.compose30daysapp.R

val NanumGothic = FontFamily(
    Font(R.font.nanum_gothic_regular, FontWeight.Normal)
)

val EastSeaDokdo = FontFamily(
    Font(R.font.east_sea_dokdo_regular, FontWeight.Normal)
)

// Set of Material typography styles to start with
val Typography = Typography(
    bodyMedium = TextStyle(
        fontFamily = NanumGothic,
        fontWeight = FontWeight.Normal,
        fontSize = 14.sp
    ),
    displaySmall = TextStyle(
        fontFamily = EastSeaDokdo,
        fontWeight = FontWeight.Normal,
        fontSize = 36.sp
    ),
    headlineLarge = TextStyle(
        fontFamily = EastSeaDokdo,
        fontWeight = FontWeight.Normal,
        fontSize = 32.sp
    )
    /* Other default text styles to override
    titleLarge = TextStyle(
        fontFamily = FontFamily.Default,
        fontWeight = FontWeight.Normal,
        fontSize = 22.sp,
        lineHeight = 28.sp,
        letterSpacing = 0.sp
    ),
    labelSmall = TextStyle(
        fontFamily = FontFamily.Default,
        fontWeight = FontWeight.Medium,
        fontSize = 11.sp,
        lineHeight = 16.sp,
        letterSpacing = 0.5.sp
    )
    */
)