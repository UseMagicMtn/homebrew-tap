# Generated from the promoted MagicMtn CLI release.
class Magic < Formula
  desc "Command-line client for MagicMtn"
  homepage "https://magicmtn.ai"
  url "https://magicmtn-cli-beta-993499103295.s3.us-east-2.amazonaws.com/releases/20261120-beta-1795161945584216000/magic-darwin-arm64", using: :nounzip
  version "20261120.1795161945584216000"
  sha256 "304f0f23067c848a2287eeaaaf051b47304ae7c471ce1c4f37df5ae7901fea6f"

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
