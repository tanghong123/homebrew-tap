class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.513.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.513.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f9a0922b1c15a02f78fb1e55a61d6f2e24245210288169cbc97880542e050f42"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.513.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c0636f23dba8d82520447aa7d7ae4a4251fd677cee466319fa352a665ede65b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.513.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f522e13f002e2760ec9f6a3d2eb0449cc80ccb95b7a093aad82ce349752711c3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.513.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "db537e89e73a099162bd97c6e7aedc8423dfa3128e52f64fef752ce5cb040be0"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
