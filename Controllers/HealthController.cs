using Microsoft.AspNetCore.Mvc;

namespace DotNetApiContainerExample.Controllers;

[ApiController]
[Route("[controller]")]
public class HealthController : ControllerBase
{
    private readonly ILogger<HealthController> _logger;

    public HealthController(ILogger<HealthController> logger)
    {
        _logger = logger;
    }

    [HttpGet]
    public string Get()
    {
        return "OK";
    }
}
