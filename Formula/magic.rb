# Generated from the promoted MagicMtn CLI release.
class Magic < Formula
  desc "Command-line client for MagicMtn"
  homepage "https://magicmtn.ai"
  url "https://magicmtn-cli-993499103295.s3.us-east-2.amazonaws.com/releases/1.1.1/magic-darwin-arm64", using: :nounzip
  version "1.1.1"
  version_scheme 2
  sha256 "386e465f24012403fa4561a19ddc8b38da8ba1abf01f8fa46935a03b8e92e3c3"

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
