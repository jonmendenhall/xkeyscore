.class public final Lcom/intermedia/HQApplication_MembersInjector;
.super Ljava/lang/Object;
.source "HQApplication_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/intermedia/HQApplication;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final trueTimeInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/initializers/TrueTimeInitializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/initializers/TrueTimeInitializer;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/intermedia/HQApplication_MembersInjector;->trueTimeInitializerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/initializers/TrueTimeInitializer;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/HQApplication;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/intermedia/HQApplication_MembersInjector;

    invoke-direct {v0, p0}, Lcom/intermedia/HQApplication_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectTrueTimeInitializer(Lcom/intermedia/HQApplication;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/HQApplication;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/initializers/TrueTimeInitializer;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/initializers/TrueTimeInitializer;

    iput-object p1, p0, Lcom/intermedia/HQApplication;->trueTimeInitializer:Lcom/intermedia/initializers/TrueTimeInitializer;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/intermedia/HQApplication;)V
    .locals 1

    if-nez p1, :cond_0

    .line 28
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot inject members into a null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/intermedia/HQApplication_MembersInjector;->trueTimeInitializerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/initializers/TrueTimeInitializer;

    iput-object v0, p1, Lcom/intermedia/HQApplication;->trueTimeInitializer:Lcom/intermedia/initializers/TrueTimeInitializer;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/intermedia/HQApplication;

    invoke-virtual {p0, p1}, Lcom/intermedia/HQApplication_MembersInjector;->injectMembers(Lcom/intermedia/HQApplication;)V

    return-void
.end method
