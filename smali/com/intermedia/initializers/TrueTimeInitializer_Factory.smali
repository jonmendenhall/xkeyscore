.class public final Lcom/intermedia/initializers/TrueTimeInitializer_Factory;
.super Ljava/lang/Object;
.source "TrueTimeInitializer_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/initializers/TrueTimeInitializer;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/intermedia/initializers/TrueTimeInitializer_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/initializers/TrueTimeInitializer;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/intermedia/initializers/TrueTimeInitializer_Factory;

    invoke-direct {v0, p0}, Lcom/intermedia/initializers/TrueTimeInitializer_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newTrueTimeInitializer(Landroid/content/Context;)Lcom/intermedia/initializers/TrueTimeInitializer;
    .locals 1

    .line 31
    new-instance v0, Lcom/intermedia/initializers/TrueTimeInitializer;

    invoke-direct {v0, p0}, Lcom/intermedia/initializers/TrueTimeInitializer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/initializers/TrueTimeInitializer;
    .locals 2

    .line 22
    new-instance v0, Lcom/intermedia/initializers/TrueTimeInitializer;

    iget-object v1, p0, Lcom/intermedia/initializers/TrueTimeInitializer_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/intermedia/initializers/TrueTimeInitializer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/intermedia/initializers/TrueTimeInitializer_Factory;->get()Lcom/intermedia/initializers/TrueTimeInitializer;

    move-result-object v0

    return-object v0
.end method
