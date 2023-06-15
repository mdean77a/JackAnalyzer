rm Square/*.xmlout
rm ExpressionLessSquare/*.xmlout
rm ArrayTest/*.xmlout
 
./JackAnalyzer Square 
./JackAnalyzer ExpressionLessSquare
./JackAnalyzer ArrayTest


TextComparer.sh Square/SquareT.xmlout Square/CompareFiles/SquareT.xml
TextComparer.sh Square/MainT.xmlout Square/CompareFiles/MainT.xml
TextComparer.sh Square/SquareGameT.xmlout Square/CompareFiles/SquareGameT.xml
TextComparer.sh ExpressionLessSquare/SquareT.xmlout ExpressionLessSquare/CompareFiles/SquareT.xml
TextComparer.sh ExpressionLessSquare/MainT.xmlout ExpressionLessSquare/CompareFiles/MainT.xml
TextComparer.sh ExpressionLessSquare/SquareGameT.xmlout ExpressionLessSquare/CompareFiles/SquareGameT.xml
TextComparer.sh ArrayTest/MainT.xmlout ArrayTest/CompareFiles/MainT.xml
