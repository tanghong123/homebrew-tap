class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.135.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.135.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a3a00caeac32e0f268c53fb4265e85275633ca59d0c2315eefd5cfc757e66779"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.135.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5db90cf6f08999ab9a46b1cb9aeba5cc6ddfc307425dc8cc3607d324d5745c68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.135.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f595ec7d56056cd880a948f2fde3c059eecbc6d41da28032952ab0223db80461"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.135.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6066aa6c728b927ddd9205365bce4323293e9216f3b7067a07e945ca807019b6"
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
