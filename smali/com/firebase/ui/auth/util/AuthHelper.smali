.class public Lcom/firebase/ui/auth/util/AuthHelper;
.super Ljava/lang/Object;
.source "AuthHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mFlowParams:Lcom/firebase/ui/auth/data/model/FlowParameters;


# direct methods
.method public constructor <init>(Lcom/firebase/ui/auth/data/model/FlowParameters;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/firebase/ui/auth/util/AuthHelper;->mFlowParams:Lcom/firebase/ui/auth/data/model/FlowParameters;

    return-void
.end method


# virtual methods
.method public getCredentialsApi()Lcom/google/android/gms/auth/api/credentials/CredentialsApi;
    .locals 1

    .line 33
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    return-object v0
.end method

.method public getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/AuthHelper;->getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    return-object v0
.end method

.method public getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/firebase/ui/auth/util/AuthHelper;->mFlowParams:Lcom/firebase/ui/auth/data/model/FlowParameters;

    iget-object v0, v0, Lcom/firebase/ui/auth/data/model/FlowParameters;->appName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneAuthProvider()Lcom/google/firebase/auth/PhoneAuthProvider;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/AuthHelper;->getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/PhoneAuthProvider;->getInstance(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/PhoneAuthProvider;

    move-result-object v0

    return-object v0
.end method

.method public getSaveSmartLockInstance(Lcom/firebase/ui/auth/ui/HelperActivityBase;)Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->getInstance(Lcom/firebase/ui/auth/ui/HelperActivityBase;)Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    move-result-object p1

    return-object p1
.end method
