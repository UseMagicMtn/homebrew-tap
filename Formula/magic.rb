# Generated from the promoted MagicMtn CLI release.
class Magic < Formula
  desc "Command-line client for MagicMtn"
  homepage "https://magicmtn.ai"
  url "https://magicmtn-cli-993499103295.s3.us-east-2.amazonaws.com/releases/3.1.0/magic-darwin-arm64", using: :nounzip
  version "3.1.0"
  version_scheme 1
  sha256 "47906377b792d14f0f45b79a753b0e9f2891769f0d8db3b1e95bc87ec70cf2e9"

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
