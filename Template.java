import java.io.*;
import java.util.*;
import java.math.*;

import static java.lang.Math.*;

public class # {
	
	public static void main(String[] args) {
		new #().run();
	}
	
	private void solve() throws Exception {
	}
	
	private BufferedReader in;
	private PrintWriter out;
	private StringTokenizer tokenizer;
	
	public void run() {
		try {
			in = new BufferedReader(new InputStreamReader(System.in));
			tokenizer = null;
			out = new PrintWriter(System.out);
			solve();
			in.close();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.exit(1);
		}
	}

	private int nextInt() throws IOException {
		return Integer.parseInt(nextToken());
	}

	private long nextLong() throws IOException {
		return Long.parseLong(nextToken());
	}

	private double nextDouble() throws IOException {
		return Double.parseDouble(nextToken());
	}

	private String nextLine() throws IOException {
		return new String(in.readLine());
	}

	private String nextToken() throws IOException {
		while (tokenizer == null || !tokenizer.hasMoreTokens()) {
			tokenizer = new StringTokenizer(in.readLine());
		}
		return tokenizer.nextToken();
	}
}
