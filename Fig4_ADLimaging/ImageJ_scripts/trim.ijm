input = getDirectory("Input directory");
output = getDirectory("Output directory");

Dialog.create("File type");
Dialog.addString("File suffix: ", "tif", 5);
Dialog.show();
suffix = Dialog.getString();

processFolder(input);

function processFolder(input) {
	list= getFileList(input);
	for (i=0;i<list.length;i++) {
		if(File.isDirectory(list[i]))
			processFolder("" + input + list[i]);
		if(endsWith(list[i], suffix))
			processFile(input, output, list[i]);
	}
}

function processFile(input, output, file) {

open(input + file);
run("Make Substack...", "delete slices=1-900");
selectWindow(file);
saveAs("Tiff", output + file);
close();
close();
}
