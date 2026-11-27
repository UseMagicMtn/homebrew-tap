# Generated from the promoted MagicMtn CLI release.
class Magic < Formula
  desc "Command-line client for MagicMtn"
  homepage "https://magicmtn.ai"
  url "https://magicmtn-cli-993499103295.s3.us-east-2.amazonaws.com/releases/1.1.2/magic-darwin-arm64", using: :nounzip
  version "1.1.2"
  version_scheme 2
  sha256 "d2b51b023a315d88eb5df4b167a1361c0d12291f221cb043a0bfb7d2d3eb6edc"

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
