class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.194.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.194.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a216c2e53abb7085f8cbd667fec6191d82b223cefeb3306e44e03e116907d374"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.194.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "23fea7662002a0f7055ed0c1ac201ca750455ec134d46e086bec8b71d1ee0268"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.194.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6f2a5eb3b43195ff88ba4b2080ecf43ef7d0c1301088dde45ee4c9540647c428"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.194.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5b3a678cb8a3974cb125ccb37387438f625bdcb70176793b38a29c5bddac4c91"
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
