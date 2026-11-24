# Generated from the promoted MagicMtn CLI release.
class Magic < Formula
  desc "Command-line client for MagicMtn"
  homepage "https://magicmtn.ai"
  url "https://magicmtn-cli-beta-993499103295.s3.us-east-2.amazonaws.com/releases/20261124-beta-1795542917691869000/magic-darwin-arm64", using: :nounzip
  version "20261124.1795542917691869000"
  sha256 "87895094d3daf04cba1d248748f889bb6290b0667938de2e18c49a46bd86c969"

  depends_on :macos
  depends_on arch: :arm64

  def install
    chmod 0755, "magic-darwin-arm64"
    bin.install "magic-darwin-arm64" => "magic"
  end

  test do
    system bin/"magic", "--version"
  end
end
