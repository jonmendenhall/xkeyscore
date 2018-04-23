.class Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;
.super Ljava/lang/Object;
.source "PhoneActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->signIn(Lcom/google/firebase/auth/PhoneAuthCredential;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/auth/AuthResult;)V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    sget-object v1, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;->VERIFIED:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    invoke-static {v0, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$1002(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;)Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    .line 323
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    sget v2, Lcom/firebase/ui/auth/R$string;->fui_verified:I

    invoke-virtual {v1, v2}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$1100(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$1300(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4$1;

    invoke-direct {v1, p0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4$1;-><init>(Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;Lcom/google/firebase/auth/AuthResult;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 319
    check-cast p1, Lcom/google/firebase/auth/AuthResult;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;->onSuccess(Lcom/google/firebase/auth/AuthResult;)V

    return-void
.end method
