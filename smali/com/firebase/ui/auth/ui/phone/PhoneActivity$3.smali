.class Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;
.super Ljava/lang/Object;
.source "PhoneActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->signIn(Lcom/google/firebase/auth/PhoneAuthCredential;)V
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

    .line 337
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 340
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$000(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)V

    .line 342
    instance-of v0, p1, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 343
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;

    invoke-static {v0}, Lcom/firebase/ui/auth/util/FirebaseAuthError;->fromException(Lcom/google/firebase/auth/FirebaseAuthException;)Lcom/firebase/ui/auth/util/FirebaseAuthError;

    move-result-object v0

    .line 346
    sget-object v2, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$5;->$SwitchMap$com$firebase$ui$auth$util$FirebaseAuthError:[I

    invoke-virtual {v0}, Lcom/firebase/ui/auth/util/FirebaseAuthError;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v2, "PhoneVerification"

    .line 370
    invoke-virtual {v0}, Lcom/firebase/ui/auth/util/FirebaseAuthError;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/util/FirebaseAuthError;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$900(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 359
    :pswitch_0
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    sget v1, Lcom/firebase/ui/auth/R$string;->fui_error_session_expired:I

    .line 360
    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3$2;

    invoke-direct {v1, p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3$2;-><init>(Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;)V

    .line 359
    invoke-static {p1, v0, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$900(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 348
    :pswitch_1
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    sget v1, Lcom/firebase/ui/auth/R$string;->fui_incorrect_code_dialog_body:I

    .line 349
    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3$1;

    invoke-direct {v1, p0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3$1;-><init>(Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;)V

    .line 348
    invoke-static {p1, v0, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$900(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$900(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
