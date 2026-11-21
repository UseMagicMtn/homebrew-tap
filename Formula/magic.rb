# Generated from the promoted MagicMtn CLI release.
class Magic < Formula
  desc "Command-line client for MagicMtn"
  homepage "https://magicmtn.ai"
  url "https://magicmtn-cli-beta-993499103295.s3.us-east-2.amazonaws.com/releases/20261121-beta-1795245248556789000/magic-darwin-arm64", using: :nounzip
  version "20261121.1795245248556789000"
  sha256 "374ed81454c76069ac993fa105e11801a6edfc756e9b57f5d0ca7ce43a68a71d"

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
