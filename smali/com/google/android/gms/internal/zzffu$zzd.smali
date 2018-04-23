.class public abstract Lcom/google/android/gms/internal/zzffu$zzd;
.super Lcom/google/android/gms/internal/zzffu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzffu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/zzffu$zzd<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzffu<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/zzfhg;"
    }
.end annotation


# instance fields
.field protected zzpgz:Lcom/google/android/gms/internal/zzffq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzffq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzffu;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzffq;->zzcxf()Lcom/google/android/gms/internal/zzffq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzffu$zzd;->zzpgz:Lcom/google/android/gms/internal/zzffq;

    return-void
.end method
