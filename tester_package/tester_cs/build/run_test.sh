rm -rf tester \
    && git clone $TESTER_CS_REPOGITORY tester \
    && cd tester \
    && dotnet build \
    && dotnet test \
    && cd ..
