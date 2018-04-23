.class final Lcom/google/android/gms/internal/zzcjw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzjgq:Ljava/lang/String;

.field private synthetic zzjhc:Lcom/google/android/gms/internal/zzcjn;

.field private synthetic zzjhh:J

.field private synthetic zzjhm:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjw;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcjw;->zzjgq:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcjw;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcjw;->zzjhm:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzcjw;->zzjhh:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjw;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjw;->zzjgq:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjw;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcjw;->zzjhm:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcjw;->zzjhh:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcjn;->zza(Lcom/google/android/gms/internal/zzcjn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
