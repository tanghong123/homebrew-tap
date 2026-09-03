class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.150.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.150.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ed5b587e73a05edf800d896dd0ed4680ea9294b0c8d4ea6059f7c92130d76285"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.150.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "da538ce6e1609c37089bcf3d3f2fc0b0573cb3f20017381dffe85a8c1921e065"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.150.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "54b998ae02971d4e4d2f606d52817463b259cd8eefd255e76f9a131f1bb23b3e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.150.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31fe9cb41fc0cc8213feeb93b7fee53158fc95446c571568e0546279a1674c08"
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
