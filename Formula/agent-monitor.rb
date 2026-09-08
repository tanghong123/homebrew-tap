class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.236.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.236.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "5d8bbcd98049e339329325438ae6dba3a83e91b268234990a86582686e50b4b4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.236.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1bdc0e18ab9b642545d73c24d1c4cb6a2645a880756e6e0f457e064c9d9c37aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.236.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cac50937ac632c8029cd86f45720ec8566bacdb467a98d91d47775abb87293f7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.236.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6507b237a6758e8ae8cdd0be8fdef7a9cc2dc65a9db5d52f1986ad99b1848fce"
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
