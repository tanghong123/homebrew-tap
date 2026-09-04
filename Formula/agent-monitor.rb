class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.183.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.183.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d8fe2498006a694770c50da1e0b23efd811e2d647887241e163832fc2672d92f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.183.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4b17582618064a6c79fb311fc71099f48f58c0cc63f181442446d577d66f59bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.183.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "be8f8fcf3c5e52439531d67f05d2110859ee0f5259992689e87a841d662bdd62"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.183.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "39552c23ed15a9f540c379f45ac0cf194afd68ee4e80ec1f82b1a645e038cde5"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
