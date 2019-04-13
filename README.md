# Arena PDF downloader

Download all the PDF files in an [are.na](https://are.na) channel.

### How to use it

1. Clone this repo `git clone git@github.com:javierarce/arena-to-pdf.git`
2. Install the dependencies `bundle install`
3. Run the script: `./download CHANNEL_URL [PDF_FOLDER_PATH]`


### Downloading from the manifest

Every time you run the `./download` command, the file `manifest.txt` is updated
with the id of the channel you've just downloaded. If you want to redownload all the PDFs or update your PDF folders, simply rum:

```bash
./download --from-manifest
```

### Private channels

If the channel is private, you'll need to get an `ACCESS_TOKEN` first. Once you have it, rename `env.sample` to `.env` and throw your [are.na access token](https://dev.are.na/oauth/applications) there.

### Protip

If you write down the path to your PDF download folder in your `.env` file, you won't need to specify it everytime you run the command.
