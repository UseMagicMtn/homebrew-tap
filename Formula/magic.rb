# Generated from the promoted MagicMtn CLI release.
class Magic < Formula
  desc "Command-line client for MagicMtn"
  homepage "https://magicmtn.ai"
  url "https://magicmtn-cli-993499103295.s3.us-east-2.amazonaws.com/releases/1.1.0/magic-darwin-arm64", using: :nounzip
  version "1.1.0"
  version_scheme 2
  sha256 "9db629092f6f63e158f38e0aadcc436be694d81066ae1b195d152be5e2a0b977"

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
