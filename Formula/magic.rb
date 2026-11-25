# Generated from the promoted MagicMtn CLI release.
class Magic < Formula
  desc "Command-line client for MagicMtn"
  homepage "https://magicmtn.ai"
  url "https://magicmtn-cli-993499103295.s3.us-east-2.amazonaws.com/releases/3.0.0/magic-darwin-arm64", using: :nounzip
  version "3.0.0"
  version_scheme 1
  sha256 "03c988e0c6e5dbca994a9e2ead7b586c78c5961ab6dee01c65de49252d8419a3"

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
