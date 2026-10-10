class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.370.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.370.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6766d89a8cfc0c2912192d8d7ee7969ddb8e2accb579d18ac670887c1b828304"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.370.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "943e2e815f135cdbd397db4f5d99cf462b9d3cf4405413b2bb10ff525dc077eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.370.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5231ef7fdbd5569102b1ccd149cda7f888cddecb1b3264225bc18e254eca4d24"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.370.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4801ef5933e620b7644f437b9919c43ac55346354bb478fd46c3b92228e89c6d"
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
