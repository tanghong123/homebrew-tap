class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.116.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.1/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d925bfd6671e41ca05c00c65b6db6310df67764bdf2e34c839168aa0e866da06"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.1/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "5d49491aa81204f6d7ef8b972a6fbd6e40d05cfd03a47a8ce62c45e6439b2675"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.1/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f0de79489660ee12cff1440262c93f93a7443fb3da408387bd72aac93eb12734"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.1/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cc4394319d5cdac35afefa2f4acee3164a6b8473da334997b65053aa001ade06"
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
