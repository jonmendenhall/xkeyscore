.class Lcom/intermedia/login/RegisterUserActivity$RegisterUserException;
.super Ljava/lang/RuntimeException;
.source "RegisterUserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/login/RegisterUserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterUserException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/login/RegisterUserActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/login/RegisterUserActivity;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/intermedia/login/RegisterUserActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 290
    iput-object p1, p0, Lcom/intermedia/login/RegisterUserActivity$RegisterUserException;->this$0:Lcom/intermedia/login/RegisterUserActivity;

    .line 291
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/intermedia/login/RegisterUserActivity;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/intermedia/login/RegisterUserActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 294
    iput-object p1, p0, Lcom/intermedia/login/RegisterUserActivity$RegisterUserException;->this$0:Lcom/intermedia/login/RegisterUserActivity;

    .line 295
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
