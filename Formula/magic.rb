# Generated from the promoted MagicMtn CLI release.
class Magic < Formula
  desc "Command-line client for MagicMtn"
  homepage "https://magicmtn.ai"
  url "https://magicmtn-cli-993499103295.s3.us-east-2.amazonaws.com/releases/3.1.1/magic-darwin-arm64", using: :nounzip
  version "3.1.1"
  version_scheme 1
  sha256 "7cca1236e45267a524f233308b02f55245df6096d3757044dfa980e54a4228d5"

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
