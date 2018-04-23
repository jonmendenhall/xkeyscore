.class Lcom/firebase/ui/auth/ui/phone/PhoneActivity$2;
.super Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
.source "PhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->sendCode(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$2;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-direct {p0}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCodeSent(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 266
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$2;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-static {v0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$502(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$2;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-static {p1, p2}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$602(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 268
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$2;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$200(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$2;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$700(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)V

    :cond_0
    return-void
.end method

.method public onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 1
    .param p1    # Lcom/google/firebase/auth/PhoneAuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 251
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$2;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$200(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$2;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-static {v0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$300(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Lcom/google/firebase/auth/PhoneAuthCredential;)V

    :cond_0
    return-void
.end method

.method public onVerificationFailed(Lcom/google/firebase/FirebaseException;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$2;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$200(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$2;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-static {v0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$400(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Lcom/google/firebase/FirebaseException;)V

    :cond_0
    return-void
.end method
