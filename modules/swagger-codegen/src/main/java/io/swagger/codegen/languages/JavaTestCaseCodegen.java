package io.swagger.codegen.languages;

import io.swagger.codegen.CodegenConfig;
import io.swagger.codegen.CodegenType;
import io.swagger.codegen.DefaultCodegen;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.util.Arrays;
import java.util.HashSet;

public final class JavaTestCaseCodegen extends JavaClientCodegen implements CodegenConfig {

    private static final Logger LOGGER = LoggerFactory.getLogger(JavaTestCaseCodegen.class);

    public JavaTestCaseCodegen() {
        outputFolder = "generated-test-code" + File.separator + "java";
        modelTemplateFiles.put("model.mustache", ".java");
        apiTemplateFiles.put("api.mustache", ".java");
        embeddedTemplateDir = templateDir = "JavaTestCase";
        apiPackage = "io.swagger.client.api";
        modelPackage = "io.swagger.client.model";
        
        reservedWords = new HashSet<String>(
            Arrays.asList(
                    "abstract", "continue", "for", "new", "switch", "assert",
                    "default", "if", "package", "synchronized", "boolean", "do", "goto", "private",
                    "this", "break", "double", "implements", "protected", "throw", "byte", "else",
                    "import", "public", "throws", "case", "enum", "instanceof", "return", "transient",
                    "catch", "extends", "int", "short", "try", "char", "final", "interface", "static",
                    "void", "class", "finally", "long", "strictfp", "volatile", "const", "float",
                    "native", "super", "while")
            );
        
        languageSpecificPrimitives = new HashSet<String>(
            Arrays.asList(
                    "String",
                    "boolean",
                    "Boolean",
                    "Double",
                    "Integer",
                    "Long",
                    "Float",
                    "Object",
                    "byte[]")
            );
        instantiationTypes.put("array", "ArrayList");
        instantiationTypes.put("map", "HashMap");
    }
    
    @Override
    public CodegenType getTag() {
        return CodegenType.OTHER;
    }

    @Override
    public String getName() {
        return "java-test";
    }

    @Override
    public String getHelp() {
        return "Generates Java test case suite";
    }
    
}
