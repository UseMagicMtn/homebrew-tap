# Generated from the promoted MagicMtn CLI release.
class Magic < Formula
  desc "Command-line client for MagicMtn"
  homepage "https://magicmtn.ai"
  url "https://magicmtn-cli-993499103295.s3.us-east-2.amazonaws.com/releases/2.0.0/magic-darwin-arm64", using: :nounzip
  version "2.0.0"
  version_scheme 1
  sha256 "a34436bcc40f68ec9823cc529f066a2a8e4c74bf19c2a5c664729a38c9941ad2"

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
