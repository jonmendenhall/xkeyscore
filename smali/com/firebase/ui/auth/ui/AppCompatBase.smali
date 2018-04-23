.class public Lcom/firebase/ui/auth/ui/AppCompatBase;
.super Lcom/firebase/ui/auth/ui/HelperActivityBase;
.source "AppCompatBase.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/HelperActivityBase;-><init>()V

    return-void
.end method

.method private configureTheme()V
    .locals 1

    .line 33
    sget v0, Lcom/firebase/ui/auth/R$style;->FirebaseUI:I

    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/ui/AppCompatBase;->setTheme(I)V

    .line 34
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/AppCompatBase;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v0

    iget v0, v0, Lcom/firebase/ui/auth/data/model/FlowParameters;->themeId:I

    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/ui/AppCompatBase;->setTheme(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/AppCompatBase;->configureTheme()V

    return-void
.end method
