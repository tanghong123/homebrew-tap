class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.137.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.137.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6ae0f4a602f7f1c538dc878e0114fc6e0141cd338fba08d1fd458ed21d4af6ff"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.137.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "23e4a655b85aec8d94e088f856bf433e7bcce5c92ba88c3dabb31328e1d954af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.137.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8e45077a750b233c76d6a8ebc1a78ed70c75dafd3b06bb918b1219b8e41e3952"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.137.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2e373b036ae2ef028561cc2c581b6d6b02bce0f89b248cab70549b04ce77eb6f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
