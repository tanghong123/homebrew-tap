class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.273.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.273.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "46548513b47f3410bcc582c50ba97dba386f18693faa97fb70991e92a31ba37e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.273.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e32fac03e189bfd62c5715e8c9681c6214ccb0e2b1092645cea1bfc55861b55b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.273.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0601eba5004205c0c937cbc7b17237f909a0067e3554c53a751f48fe75880c85"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.273.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "83d34bac9ee781b2262a654ff5f668dbde6f951613d35d0aa6e63794803c5e10"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
