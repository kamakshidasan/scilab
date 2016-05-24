#include "LookAndFeelManager.hxx"
/* Generated by GIWS (version 2.0.2) with command:
giws --disable-return-size-array --output-dir src/jni/ --throws-exception-on-error --description-file src/jni/LookAndFeelManager.giws.xml
*/
/*

This is generated code.

This software is a computer program whose purpose is to hide the complexity
of accessing Java objects/methods from C++ code.

This software is governed by the CeCILL-B license under French law and
abiding by the rules of distribution of free software.  You can  use,
modify and/ or redistribute the software under the terms of the CeCILL-B
license as circulated by CEA, CNRS and INRIA at the following URL
"http://www.cecill.info".

As a counterpart to the access to the source code and  rights to copy,
modify and redistribute granted by the license, users are provided only
with a limited warranty  and the software's author,  the holder of the
economic rights,  and the successive licensors  have only  limited
liability.

In this respect, the user's attention is drawn to the risks associated
with loading,  using,  modifying and/or developing or reproducing the
software by the user in light of its specific status of free software,
that may mean  that it is complicated to manipulate,  and  that  also
therefore means  that it is reserved for developers  and  experienced
professionals having in-depth computer knowledge. Users are therefore
encouraged to load and test the software's suitability as regards their
requirements in conditions enabling the security of their systems and/or
data to be ensured and,  more generally, to use and operate it in the
same conditions as regards security.

The fact that you are presently reading this means that you have had
knowledge of the CeCILL-B license and that you accept its terms.
*/

namespace org_scilab_modules_gui_utils {

                // Static declarations (if any)
                
// Returns the current env

JNIEnv * LookAndFeelManager::getCurrentEnv() {
JNIEnv * curEnv = NULL;
jint res=this->jvm->AttachCurrentThread(reinterpret_cast<void **>(&curEnv), NULL);
if (res != JNI_OK) {
throw GiwsException::JniException(getCurrentEnv());
}
return curEnv;
}
// Destructor

LookAndFeelManager::~LookAndFeelManager() {
JNIEnv * curEnv = NULL;
this->jvm->AttachCurrentThread(reinterpret_cast<void **>(&curEnv), NULL);
curEnv->DeleteGlobalRef(this->instance);
curEnv->DeleteGlobalRef(this->instanceClass);
}
// Constructors
LookAndFeelManager::LookAndFeelManager(JavaVM * jvm_) {
jmethodID constructObject = NULL ;
jobject localInstance ;
jclass localClass ;

const std::string construct="<init>";
const std::string param="()V";
jvm=jvm_;

JNIEnv * curEnv = getCurrentEnv();

localClass = curEnv->FindClass( this->className().c_str() ) ;
if (localClass == NULL) {
  throw GiwsException::JniClassNotFoundException(curEnv, this->className());
}

this->instanceClass = static_cast<jclass>(curEnv->NewGlobalRef(localClass));

/* localClass is not needed anymore */
curEnv->DeleteLocalRef(localClass);

if (this->instanceClass == NULL) {
throw GiwsException::JniObjectCreationException(curEnv, this->className());
}


constructObject = curEnv->GetMethodID( this->instanceClass, construct.c_str() , param.c_str() ) ;
if(constructObject == NULL){
throw GiwsException::JniObjectCreationException(curEnv, this->className());
}

localInstance = curEnv->NewObject( this->instanceClass, constructObject ) ;
if(localInstance == NULL){
throw GiwsException::JniObjectCreationException(curEnv, this->className());
}
 
this->instance = curEnv->NewGlobalRef(localInstance) ;
if(this->instance == NULL){
throw GiwsException::JniObjectCreationException(curEnv, this->className());
}
/* localInstance not needed anymore */
curEnv->DeleteLocalRef(localInstance);

                /* Methods ID set to NULL */
jbooleanisSupportedLookAndFeeljstringjava_lang_StringID=NULL;
jstringgetCurrentLookAndFeelID=NULL;
jbooleansetLookAndFeeljstringjava_lang_StringID=NULL;
jbooleansetSystemLookAndFeelID=NULL;
jobjectArray_getInstalledLookAndFeelsID=NULL;
jintnumbersOfInstalledLookAndFeelsID=NULL;


}

LookAndFeelManager::LookAndFeelManager(JavaVM * jvm_, jobject JObj) {
        jvm=jvm_;

        JNIEnv * curEnv = getCurrentEnv();

jclass localClass = curEnv->GetObjectClass(JObj);
        this->instanceClass = static_cast<jclass>(curEnv->NewGlobalRef(localClass));
        curEnv->DeleteLocalRef(localClass);

        if (this->instanceClass == NULL) {
throw GiwsException::JniObjectCreationException(curEnv, this->className());
        }

        this->instance = curEnv->NewGlobalRef(JObj) ;
        if(this->instance == NULL){
throw GiwsException::JniObjectCreationException(curEnv, this->className());
        }
        /* Methods ID set to NULL */
        jbooleanisSupportedLookAndFeeljstringjava_lang_StringID=NULL;
jstringgetCurrentLookAndFeelID=NULL;
jbooleansetLookAndFeeljstringjava_lang_StringID=NULL;
jbooleansetSystemLookAndFeelID=NULL;
jobjectArray_getInstalledLookAndFeelsID=NULL;
jintnumbersOfInstalledLookAndFeelsID=NULL;


}

// Generic methods

void LookAndFeelManager::synchronize() {
if (getCurrentEnv()->MonitorEnter(instance) != JNI_OK) {
throw GiwsException::JniMonitorException(getCurrentEnv(), "LookAndFeelManager");
}
}

void LookAndFeelManager::endSynchronize() {
if ( getCurrentEnv()->MonitorExit(instance) != JNI_OK) {
throw GiwsException::JniMonitorException(getCurrentEnv(), "LookAndFeelManager");
}
}
// Method(s)

bool LookAndFeelManager::isSupportedLookAndFeel (char const* lookandfeel){

JNIEnv * curEnv = getCurrentEnv();

if (jbooleanisSupportedLookAndFeeljstringjava_lang_StringID==NULL) { /* Use the cache */
 jbooleanisSupportedLookAndFeeljstringjava_lang_StringID = curEnv->GetMethodID(this->instanceClass, "isSupportedLookAndFeel", "(Ljava/lang/String;)Z" ) ;
if (jbooleanisSupportedLookAndFeeljstringjava_lang_StringID == NULL) {
throw GiwsException::JniMethodNotFoundException(curEnv, "isSupportedLookAndFeel");
}
}
jstring lookandfeel_ = curEnv->NewStringUTF( lookandfeel );
if (lookandfeel != NULL && lookandfeel_ == NULL)
{
throw GiwsException::JniBadAllocException(curEnv);
}


                        jboolean res =  static_cast<jboolean>( curEnv->CallBooleanMethod( this->instance, jbooleanisSupportedLookAndFeeljstringjava_lang_StringID ,lookandfeel_));
                        curEnv->DeleteLocalRef(lookandfeel_);

return (res == JNI_TRUE);

}

char* LookAndFeelManager::getCurrentLookAndFeel (){

JNIEnv * curEnv = getCurrentEnv();

if (jstringgetCurrentLookAndFeelID==NULL) { /* Use the cache */
 jstringgetCurrentLookAndFeelID = curEnv->GetMethodID(this->instanceClass, "getCurrentLookAndFeel", "()Ljava/lang/String;" ) ;
if (jstringgetCurrentLookAndFeelID == NULL) {
throw GiwsException::JniMethodNotFoundException(curEnv, "getCurrentLookAndFeel");
}
}
                        jstring res =  static_cast<jstring>( curEnv->CallObjectMethod( this->instance, jstringgetCurrentLookAndFeelID ));
                        if (curEnv->ExceptionCheck()) {
throw GiwsException::JniCallMethodException(curEnv);
}if (res != NULL) { 

const char *tempString = curEnv->GetStringUTFChars(res, 0);
char * myStringBuffer = new char[strlen(tempString) + 1];
strcpy(myStringBuffer, tempString);
curEnv->ReleaseStringUTFChars(res, tempString);
curEnv->DeleteLocalRef(res);

return myStringBuffer;
 } else { 
curEnv->DeleteLocalRef(res);
return NULL;
}
}

bool LookAndFeelManager::setLookAndFeel (char const* lookandfeel){

JNIEnv * curEnv = getCurrentEnv();

if (jbooleansetLookAndFeeljstringjava_lang_StringID==NULL) { /* Use the cache */
 jbooleansetLookAndFeeljstringjava_lang_StringID = curEnv->GetMethodID(this->instanceClass, "setLookAndFeel", "(Ljava/lang/String;)Z" ) ;
if (jbooleansetLookAndFeeljstringjava_lang_StringID == NULL) {
throw GiwsException::JniMethodNotFoundException(curEnv, "setLookAndFeel");
}
}
jstring lookandfeel_ = curEnv->NewStringUTF( lookandfeel );
if (lookandfeel != NULL && lookandfeel_ == NULL)
{
throw GiwsException::JniBadAllocException(curEnv);
}


                        jboolean res =  static_cast<jboolean>( curEnv->CallBooleanMethod( this->instance, jbooleansetLookAndFeeljstringjava_lang_StringID ,lookandfeel_));
                        curEnv->DeleteLocalRef(lookandfeel_);

return (res == JNI_TRUE);

}

bool LookAndFeelManager::setSystemLookAndFeel (){

JNIEnv * curEnv = getCurrentEnv();

if (jbooleansetSystemLookAndFeelID==NULL) { /* Use the cache */
 jbooleansetSystemLookAndFeelID = curEnv->GetMethodID(this->instanceClass, "setSystemLookAndFeel", "()Z" ) ;
if (jbooleansetSystemLookAndFeelID == NULL) {
throw GiwsException::JniMethodNotFoundException(curEnv, "setSystemLookAndFeel");
}
}
                        jboolean res =  static_cast<jboolean>( curEnv->CallBooleanMethod( this->instance, jbooleansetSystemLookAndFeelID ));
                        
return (res == JNI_TRUE);

}

char** LookAndFeelManager::getInstalledLookAndFeels (){

JNIEnv * curEnv = getCurrentEnv();

if (jobjectArray_getInstalledLookAndFeelsID==NULL) { /* Use the cache */
 jobjectArray_getInstalledLookAndFeelsID = curEnv->GetMethodID(this->instanceClass, "getInstalledLookAndFeels", "()[Ljava/lang/String;" ) ;
if (jobjectArray_getInstalledLookAndFeelsID == NULL) {
throw GiwsException::JniMethodNotFoundException(curEnv, "getInstalledLookAndFeels");
}
}
                        jobjectArray res =  static_cast<jobjectArray>( curEnv->CallObjectMethod( this->instance, jobjectArray_getInstalledLookAndFeelsID ));
                        if (curEnv->ExceptionCheck()) {
throw GiwsException::JniCallMethodException(curEnv);
}if (res != NULL) { int lenRow;
 lenRow = curEnv->GetArrayLength(res);

char **arrayOfString;
arrayOfString = new char *[lenRow];
for (jsize i = 0; i < lenRow; i++){
jstring resString = reinterpret_cast<jstring>(curEnv->GetObjectArrayElement(res, i));
const char *tempString = curEnv->GetStringUTFChars(resString, 0);
arrayOfString[i] = new char[strlen(tempString) + 1];

strcpy(arrayOfString[i], tempString);
curEnv->ReleaseStringUTFChars(resString, tempString);
curEnv->DeleteLocalRef(resString);
}

curEnv->DeleteLocalRef(res);
return arrayOfString;
 } else { 
curEnv->DeleteLocalRef(res);
return NULL;
}
}

int LookAndFeelManager::numbersOfInstalledLookAndFeels (){

JNIEnv * curEnv = getCurrentEnv();

if (jintnumbersOfInstalledLookAndFeelsID==NULL) { /* Use the cache */
 jintnumbersOfInstalledLookAndFeelsID = curEnv->GetMethodID(this->instanceClass, "numbersOfInstalledLookAndFeels", "()I" ) ;
if (jintnumbersOfInstalledLookAndFeelsID == NULL) {
throw GiwsException::JniMethodNotFoundException(curEnv, "numbersOfInstalledLookAndFeels");
}
}
                        jint res =  static_cast<jint>( curEnv->CallIntMethod( this->instance, jintnumbersOfInstalledLookAndFeelsID ));
                        
return res;

}

}