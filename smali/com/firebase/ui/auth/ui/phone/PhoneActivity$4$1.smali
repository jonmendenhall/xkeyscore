.class Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4$1;
.super Ljava/lang/Object;
.source "PhoneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;->onSuccess(Lcom/google/firebase/auth/AuthResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;

.field final synthetic val$authResult:Lcom/google/firebase/auth/AuthResult;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;Lcom/google/firebase/auth/AuthResult;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4$1;->this$1:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4$1;->val$authResult:Lcom/google/firebase/auth/AuthResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4$1;->this$1:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;

    iget-object v0, v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$200(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4$1;->this$1:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;

    iget-object v0, v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$000(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)V

    .line 331
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4$1;->this$1:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;

    iget-object v0, v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$4$1;->val$authResult:Lcom/google/firebase/auth/AuthResult;

    invoke-interface {v1}, Lcom/google/firebase/auth/AuthResult;->getUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$1200(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;Lcom/google/firebase/auth/FirebaseUser;)V

    :cond_0
    return-void
.end method
