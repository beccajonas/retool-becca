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
      dbBlobId="1616819f-ee58-4b5a-9443-a981964e158c"
      horizontalAlign="center"
      src="https://picsum.photos/id/1025/800/600"
      srcType="dbBlobId"
    />

    <Image
      id="image2"
      dbBlobId="1616819f-ee58-4b5a-9443-a981964e158c"
      horizontalAlign="center"
      src="https://picsum.photos/id/1025/800/600"
      srcType="dbBlobId"
/>
    <Text
      id="text1"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
  </Frame>
</App>
