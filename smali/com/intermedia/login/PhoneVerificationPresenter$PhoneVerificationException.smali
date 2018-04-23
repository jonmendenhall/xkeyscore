.class Lcom/intermedia/login/PhoneVerificationPresenter$PhoneVerificationException;
.super Ljava/lang/Throwable;
.source "PhoneVerificationPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/login/PhoneVerificationPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneVerificationException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/login/PhoneVerificationPresenter;


# direct methods
.method constructor <init>(Lcom/intermedia/login/PhoneVerificationPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/intermedia/login/PhoneVerificationPresenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 377
    iput-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter$PhoneVerificationException;->this$0:Lcom/intermedia/login/PhoneVerificationPresenter;

    .line 378
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method
