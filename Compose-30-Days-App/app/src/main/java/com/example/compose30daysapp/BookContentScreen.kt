package com.example.compose30daysapp

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CenterAlignedTopAppBar
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
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

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun BookContentList(modifier: Modifier = Modifier) {
    val bookContents = BookContentsRepository.bookContents
    Scaffold(
        topBar = {
            CenterAlignedTopAppBar(title = {
                Text(
                    text = stringResource(R.string.app_bar_title),
                    style = MaterialTheme.typography.headlineLarge
                )
            })
        },
        modifier = modifier
    ) {
        LazyColumn(
            modifier = Modifier,
            contentPadding = it
        ) {
            items(bookContents) { bookContent ->
                BookContentListItem(bookContent = bookContent)
            }
        }
    }
}

@Composable
fun BookContentListItem(
    modifier: Modifier = Modifier,
    bookContent: BookContent
) {
    Card(
        modifier = modifier
            .padding(vertical = 8.dp)
            .padding(horizontal = 16.dp),
        elevation = CardDefaults.cardElevation(2.dp),
        shape = MaterialTheme.shapes.medium
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
fun BookContentListPreview() {
    Compose30DaysAppTheme {
        BookContentList()
    }
}

@Preview
@Composable
fun BookContentListPreviewDark() {
    Compose30DaysAppTheme(darkTheme = true) {
        BookContentList()
    }
}


@Preview
@Composable
fun BookContentListItemPreview() {
    val bookContents = BookContentsRepository.bookContents

    Compose30DaysAppTheme {
        BookContentListItem(bookContent = bookContents[23])
    }
}
