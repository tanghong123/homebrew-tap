class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.552.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.552.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "90151b93dc83768cac9048268ebde45974c24d20f1706d002c57f101435632dc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.552.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "8d1e011502fcbdd0880c5f8df9438541bb72b3ed412fe83461b285dbffe9ac72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.552.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9a12a5685aad30a31d9c4b01bad08e6519339d78e6f8395c5cd8a0c2bce79dda"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.552.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f4ba39be7aee4de4861ceed1abc74f679ee880a84871f3a5f636795ddabb4526"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
