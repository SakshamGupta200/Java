public static boolean cmpArr(int ar1[],int ar2[]){
		for(int i=0;i<26;i++){
			if(ar1[i]!=ar2[i]){
				return false;
			}
		}
		return true;
	}

	public static int findCount(String s1,String s2){
		int feq1[] = new int[26];
		int feq2[] = new int[26];
		for(int i=0;i<s2.length();i++){
			int c = s2.charAt(i) - 'a';
			feq2[c]++;
		}
		for(int i=0;i<s2.length();i++){
			int c = s1.charAt(i) - 'a';
			feq1[c]++;
		}
		int cnt=0;
		if(cmpArr(feq1,feq2)){
			cnt++;
		}
		for(int i=s2.length();i<s1.length();i++){
			feq1[s1.charAt(i-s2.length()) - 'a']--;
			feq1[s1.charAt(i) - 'a']++;
			if(cmpArr(feq1,feq2)){
			
public static void main(String[] args) {
		try {
			System.setIn(new FileInputStream("input.txt"));
			System.setOut(new PrintStream(new FileOutputStream("output.txt")));
		} catch (Exception e) {
			System.err.println("Error");
		}
		Scanner sc = new Scanner(System.in);
		String s1 = sc.next();
		String s2 = sc.next();
		System.out.println(findCount(s1,s2));
	}
