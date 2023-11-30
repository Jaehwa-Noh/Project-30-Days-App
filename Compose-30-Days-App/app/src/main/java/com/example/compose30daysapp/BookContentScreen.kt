package com.example.compose30daysapp

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.compose30daysapp.data.BookContent
import com.example.compose30daysapp.model.BookContentsRepository
import com.example.compose30daysapp.ui.theme.Compose30DaysAppTheme

@Composable
fun BookContentList(modifier: Modifier = Modifier) {

}

@Composable
fun BookContentListItem(
    modifier: Modifier = Modifier,
    bookContent: BookContent
) {
    Card(
        modifier = modifier,
        elevation = CardDefaults.cardElevation(2.dp)
    ) {
        Column(modifier = Modifier) {
            Image(
                painter = painterResource(id = bookContent.imageId),
                contentScale = ContentScale.Crop,
                contentDescription = null,
                modifier = Modifier
                    .height(200.dp)
            )
            BookContentListItemTextArea(bookContent = bookContent)
        }
    }
}

@Composable
fun BookContentListItemTextArea(
    modifier: Modifier = Modifier,
    bookContent: BookContent
) {
    Column(
        modifier = modifier
            .padding(16.dp)
    ) {
        Text(
            text = bookContent.day,
            style = MaterialTheme.typography.bodyMedium
        )
        Spacer(
            modifier = Modifier
                .height(4.dp)
        )
        Text(
            text = stringResource(id = bookContent.titleStringId),
            style = MaterialTheme.typography.displaySmall
        )
        Spacer(
            modifier = Modifier
                .height(24.dp)
        )
        Text(
            text = stringResource(id = bookContent.contentStringId),
            style = MaterialTheme.typography.bodyMedium
        )
        Text(
            text = stringResource(id = bookContent.sourceStringId),
            style = MaterialTheme.typography.bodyMedium
        )
    }
}

@Preview
@Composable
fun BookContentListItemPreview() {
    val bookContents = BookContentsRepository.bookContents

    Compose30DaysAppTheme {
        BookContentListItem(bookContent = bookContents[0])
    }
}
