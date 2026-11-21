# Generated from the promoted MagicMtn CLI release.
class Magic < Formula
  desc "Command-line client for MagicMtn"
  homepage "https://magicmtn.ai"
  url "https://magicmtn-cli-beta-993499103295.s3.us-east-2.amazonaws.com/releases/20261121-beta-1795225613120453000/magic-darwin-arm64", using: :nounzip
  version "20261121.1795225613120453000"
  sha256 "1ab279f391491976d411835e9e46644af8c969e9be9e531867c921f2a4b7ca78"

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
