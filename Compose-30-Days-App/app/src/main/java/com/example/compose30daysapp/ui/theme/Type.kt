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
)