<App>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Image
      id="image1"
      heightType="fixed"
      horizontalAlign="center"
      retoolStorageFileId="06ac282f-f53c-4ce7-8b26-8a7032356f94"
      src="https://picsum.photos/id/1025/800/600"
      srcType="retoolStorageFileId"
    />

    <Text
      id="text1"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
    <Image
      id="image2"
      dbBlobId="1616819f-ee58-4b5a-9443-a981964e158c"
      horizontalAlign="center"
      src="https://picsum.photos/id/1025/800/600"
      srcType="dbBlobId"
    />
  </Frame>
</App>
