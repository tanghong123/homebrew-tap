class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.111.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.1/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ba15f7899e766f5fb6f2a432a9d22eff1cbfdf4ccfa3aa34091abd9354747446"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.1/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "dc59a6de53d97ad4c8ba9cf939567b768e3749ee471c9a6d6d736c36d83eb6b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.1/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2968037e90f094395759ee562d736c7ffc529d8c822bc5fdf9da1e3ccf72681d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.1/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eb3d80464fdf6ebc963516cf2e39806c5f2bee7a93d4bb2c32823d0f152fdb29"
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
