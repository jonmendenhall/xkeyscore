.class Lcom/firebase/ui/auth/ui/phone/PhoneActivity$1;
.super Ljava/lang/Object;
.source "PhoneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->onCodeSent()V
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

    .line 198
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$1;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$1;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$000(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)V

    .line 202
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$1;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$100(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)V

    return-void
.end method
