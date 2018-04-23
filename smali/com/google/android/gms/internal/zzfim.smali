.class public final Lcom/google/android/gms/internal/zzfim;
.super Ljava/lang/RuntimeException;


# instance fields
.field private final zzpko:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzfhe;)V
    .locals 0

    const-string p1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfim;->zzpko:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzczt()Lcom/google/android/gms/internal/zzfge;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfge;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfim;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfge;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
