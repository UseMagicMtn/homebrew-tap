# Generated from the promoted MagicMtn CLI release.
class Magic < Formula
  desc "Command-line client for MagicMtn"
  homepage "https://magicmtn.ai"
  url "https://magicmtn-cli-993499103295.s3.us-east-2.amazonaws.com/releases/1.0.0/magic-darwin-arm64", using: :nounzip
  version "1.0.0"
  version_scheme 1
  sha256 "515d57078b9461419c4e9ac747d44a1178351be4a31cdbd7a515f576b4b308a9"

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
