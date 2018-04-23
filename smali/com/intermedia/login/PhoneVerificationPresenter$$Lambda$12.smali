.class final synthetic Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/intermedia/login/PhoneVerificationPresenter;


# direct methods
.method constructor <init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$12;->arg$1:Lcom/intermedia/login/PhoneVerificationPresenter;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$12;->arg$1:Lcom/intermedia/login/PhoneVerificationPresenter;

    invoke-virtual {v0, p1}, Lcom/intermedia/login/PhoneVerificationPresenter;->lambda$configure$10$PhoneVerificationPresenter(Landroid/view/View;)V

    return-void
.end method
