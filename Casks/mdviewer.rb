cask "mdviewer" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "a790479fa47162a25284f7a32721c5faabcd12bbf43a9c75dbc7c50695d4e874",
         intel: "572cc68541a3bd1cbdd7de6720020b78c6971340f4193a4e99e512e46bd94fa8"

  url "https://github.com/mmmikael/mdviewer/releases/download/v#{version}/MDViewer_#{version}_#{arch}.dmg"
  name "MDViewer"
  desc "Markdown viewer with live reload, Quick Look previews and AI summaries"
  homepage "https://github.com/mmmikael/mdviewer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "MDViewer.app"

  zap trash: [
    "~/Library/Application Support/com.mmmikael.mdviewer",
    "~/Library/Caches/com.mmmikael.mdviewer",
    "~/Library/Saved Application State/com.mmmikael.mdviewer.savedState",
    "~/Library/WebKit/com.mmmikael.mdviewer",
  ]
end
