.class final Lcom/google/android/gms/internal/zzcgg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziwu:J

.field private synthetic zziwv:Lcom/google/android/gms/internal/zzcgd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcgd;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgg;->zziwv:Lcom/google/android/gms/internal/zzcgd;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzcgg;->zziwu:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgg;->zziwv:Lcom/google/android/gms/internal/zzcgd;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcgg;->zziwu:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgd;->zza(Lcom/google/android/gms/internal/zzcgd;J)V

    return-void
.end method
