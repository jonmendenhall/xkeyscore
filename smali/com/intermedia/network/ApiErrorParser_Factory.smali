.class public final Lcom/intermedia/network/ApiErrorParser_Factory;
.super Ljava/lang/Object;
.source "ApiErrorParser_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/network/ApiErrorParser;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
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
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/intermedia/network/ApiErrorParser_Factory;->gsonProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/network/ApiErrorParser;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/intermedia/network/ApiErrorParser_Factory;

    invoke-direct {v0, p0}, Lcom/intermedia/network/ApiErrorParser_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newApiErrorParser(Lcom/google/gson/Gson;)Lcom/intermedia/network/ApiErrorParser;
    .locals 1

    .line 31
    new-instance v0, Lcom/intermedia/network/ApiErrorParser;

    invoke-direct {v0, p0}, Lcom/intermedia/network/ApiErrorParser;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/network/ApiErrorParser;
    .locals 2

    .line 22
    new-instance v0, Lcom/intermedia/network/ApiErrorParser;

    iget-object v1, p0, Lcom/intermedia/network/ApiErrorParser_Factory;->gsonProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    invoke-direct {v0, v1}, Lcom/intermedia/network/ApiErrorParser;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/intermedia/network/ApiErrorParser_Factory;->get()Lcom/intermedia/network/ApiErrorParser;

    move-result-object v0

    return-object v0
.end method
